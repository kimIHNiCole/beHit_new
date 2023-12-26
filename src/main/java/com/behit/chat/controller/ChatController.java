package com.behit.chat.controller;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

import com.behit.chat.dto.ChatDTO;

@Controller
public class ChatController {

	@MessageMapping("/chat.sendMessage")
    @SendTo("/topic/public")
    public ChatDTO sendMessage(ChatDTO chatMessage) {
        return chatMessage;
    }
	
	@MessageMapping("/chat.addUser")
    @SendTo("/topic/public")
    public ChatDTO addUser(ChatDTO chatMessage) {
        return chatMessage;
    }
}
