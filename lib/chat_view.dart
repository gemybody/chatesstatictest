import 'package:chatesstatic/AppColors.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text('Chates',style: TextStyle(color: AppColors.WhiteColor),),
        actions: [IconButton

          (color:AppColors.WhiteColor,onPressed: (){}, icon: Icon(Icons.settings)),],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Favourite Contacts',style: TextStyle(fontSize: 18,color: AppColors.WhiteColor,fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder:  (context, index) {
                        return Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTfZg45Q_GQPyh_dCrvWaqcGiYdKyY3UxoJSA1KsoDyw&s'),
                            ),
                            SizedBox(height: 10,),
                            Text('messi',style: TextStyle(color: AppColors.WhiteColor),),
                          ],
                        );
                      } ,
                      separatorBuilder: (context, index) {
                       return SizedBox(
                         width: 10,
                       );
                      },
                      itemCount: 10),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.WhiteColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),

              ),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                      return ListTile(
                        leading:  CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTfZg45Q_GQPyh_dCrvWaqcGiYdKyY3UxoJSA1KsoDyw&s'),
                        ),

                        title: Text('messi',style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text('لا عزاء لحمدون'),
                        trailing: Text('10:00 pm'),
                      );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 10),
            ),
          ),
        ],
      ),
    );
  }
}
