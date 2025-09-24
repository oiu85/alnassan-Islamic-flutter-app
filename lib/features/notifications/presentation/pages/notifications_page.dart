import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/shared/wdigets/ui_status_handling.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../bloc/notification_bloc.dart';
import '../bloc/notification_event.dart';
import '../bloc/notification_state.dart';
import '../widgets/notification_card.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      context.read<NotificationBloc>().add( LoadMoreNotificationsEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NotificationBloc>()
        ..add(FetchNotificationsEvent()),
      child: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          return AppScaffold.custom(
            appBar: AppBar(
              title: Text(
                'الإشعارات',
                style: TextStyle(
                  fontSize: 18.f,
                  fontFamily: FontFamily.tajawal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.black),
              actions: [
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    context.read<NotificationBloc>().add(RefreshNotificationsEvent());
                  },
                ),
              ],
            ),
            body: SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: _buildNotificationsList(context, state),
              isEmpty: state.status.isSuccess() && state.notifications.isEmpty,
              emptyMessage: 'لا توجد إشعارات متاحة',
              loadingMessage: 'جاري تحميل الإشعارات...',
              onRetry: () {
                context.read<NotificationBloc>().add(FetchNotificationsEvent());
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildNotificationsList(BuildContext context, NotificationState state) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<NotificationBloc>().add(RefreshNotificationsEvent());
      },
      child: ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.symmetric(vertical: 8.h),
        itemCount: state.notifications.length + (state.status.isLoadingMore() ? 1 : 0),
        itemBuilder: (context, index) {
          if (index >= state.notifications.length) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          final notification = state.notifications[index];
          return NotificationCard(
            notification: notification,
            onTap: () {
              // TODO: Handle notification tap - navigate to specific content
              _handleNotificationTap(notification);
            },
          );
        },
      ),
    );
  }

  void _handleNotificationTap(notification) {
    // TODO: Implement navigation based on notification type and URL
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('تم النقر على: ${notification.title}'),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
