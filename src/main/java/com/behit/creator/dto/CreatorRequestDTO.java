package com.behit.creator.dto;

import java.util.ArrayList;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CreatorRequestDTO {
	
	private CreatorDTO creatorDTO;
	private ArrayList<ChannelDTO> channelDTOList;
	private ArrayList<CreHistDTO> creHistDTOList;
	private ArrayList<SnsDTO> snsDTOList;

	
}
