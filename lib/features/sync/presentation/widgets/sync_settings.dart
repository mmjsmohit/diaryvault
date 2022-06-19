import 'package:dairy_app/core/widgets/glass_dialog.dart';
import 'package:dairy_app/core/widgets/submit_button.dart';
import 'package:dairy_app/features/sync/presentation/widgets/cloud_user_info.dart';
import 'package:dairy_app/features/sync/presentation/widgets/sync_now_button.dart';
import 'package:flutter/material.dart';

class SyncSettings extends StatelessWidget {
  const SyncSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5.0),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Sync",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          SwitchListTile(
            activeColor: Colors.pinkAccent,
            contentPadding: const EdgeInsets.all(0),
            title: const Text("Auto sync"),
            subtitle: const Text(
                "Automatically donwloads and uploads data from cloud"),
            value: true,
            onChanged: (_) {},
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Text("Sync now"),
              Spacer(),
              SyncNowButton(),
              SizedBox(width: 8.0),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            "Available platforms for sync",
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showCustomDialog(
                    context: context,
                    child: CloudUserInfo(
                      imagePath: "assets/images/google_drive_icon.png",
                      cloudSourceName: "google_drive",
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.white.withOpacity(0.2),
                      // decoration: const BoxDecoration(color: Colors.pinkAccent),
                    ),
                    Image.asset(
                      "assets/images/google_drive_icon.png",
                      width: 35,
                      height: 35,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.white.withOpacity(0.2),
                    // decoration: const BoxDecoration(color: Colors.pinkAccent),
                  ),
                  Image.asset(
                    "assets/images/dropbox_icon.png",
                    width: 50,
                    height: 50,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}