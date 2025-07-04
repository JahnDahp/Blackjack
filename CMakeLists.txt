﻿cmake_minimum_required(VERSION 3.20)
project(Blackjack)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/Bin/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG  "${CMAKE_SOURCE_DIR}/Bin/")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_SOURCE_DIR}/Bin/")

find_package(GLEW REQUIRED)
find_package(glfw3 CONFIG REQUIRED)
find_package(glm CONFIG REQUIRED)
find_package(freetype CONFIG REQUIRED)

add_executable(Blackjack 
	"main.cpp" 
	"Source/indexBuffer.cpp"
	"Source/renderer.cpp"
	"Source/shader.cpp"
	"Source/vertexArray.cpp"
	"Source/vertexBuffer.cpp"
	"Source/texture.cpp" 
	"Source/player.cpp" 
	"Source/game.cpp" 
	"Source/dealer.cpp" 
	"Source/card.cpp" 
	"Source/button.cpp" 
	"Source/shoe.cpp"
	"Source/blackjack.cpp"
	"Source/choiceButton.cpp"
	"Source/playButton.cpp"
	"Source/text.cpp"
	"Source/titleScreen.cpp"
	"Source/switchButton.cpp"
	"Source/arrowButton.cpp" )

target_include_directories(Blackjack PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/Source")
target_include_directories(Blackjack PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/Include")
target_include_directories(Blackjack PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/Resources")

target_link_libraries(Blackjack PRIVATE GLEW::GLEW glfw glm::glm freetype)
