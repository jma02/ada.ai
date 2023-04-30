import 'package:ada_ai/env/env.dart';

import '../classes/chat_message.dart';
import 'package:dart_openai/openai.dart';

class GPTApi {
  static const _model = 'gpt-3.5-turbo';

  GPTApi() {
    OpenAI.apiKey = Env.OPENAI_API_TOKEN;
  }

  Future<String> completeChat(List<ChatMessage> messages) async {
    final chatCompletion = await OpenAI.instance.chat.create(
      model: _model,
      messages: messages
          .map((e) => OpenAIChatCompletionChoiceMessageModel(
                role: e.isUserMessage
                    ? OpenAIChatMessageRole.user
                    : OpenAIChatMessageRole.assistant,
                content: e.content,
              ))
          .toList(),
    );
    return chatCompletion.choices.first.message.content;
  }
}
