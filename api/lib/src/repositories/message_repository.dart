import 'package:supabase/supabase.dart';
  import 'package:postgrest/postgrest.dart';

class MessageRepository {
  final SupabaseClient dbClient;
  MessageRepository({required this.dbClient});
  createMessage() {
    throw UnimplementedError();
  }

  Future<List<Map<String, dynamic>>> fetchMessages(String chatRoomId) async {
    try {
      return await dbClient
          .from('messages')
          .select()
          .eq('chat_room_id', chatRoomId);
    } catch (err) {
      throw Exception(err);
    }
  }


}
