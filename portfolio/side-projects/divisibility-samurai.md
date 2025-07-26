# Divisibility Samurai - Flutter Web Game
https://divisibility-samurai.web.app/

## Project Overview

A complete Flutter web-based math educational game where players identify numbers divisible by given divisors. Features physics-based gameplay with numbers appearing as blocks that players "slash" to score points and progress through tiers and levels. Runs in web browsers on both mobile and desktop devices.

## Game Structure

### Content Design (36 Total Levels)
- **📚 Study Tier**: 9 levels, divisors 2-12, numbers 1-50 range
- **🥉 Bronze Tier**: 9 levels, divisors 2-12, numbers 10-99 (2-digit)
- **🥈 Silver Tier**: 9 levels, divisors 2-12, numbers 100-999 (3-digit) 
- **🥇 Gold Tier**: 9 levels, divisors 2-12, numbers 1000-9999 (4-digit)

### Game Mechanics
- **Physics System**: Custom 2D physics with tier-based gravity and collision detection
- **Lives System**: 10 total lives, lose 1 for incorrect answers
- **Level Progression**: Complete 10 correct blocks per level to advance
- **Web-based**: Optimized for browser play on both mobile and desktop (360x480 viewport)

## Technical Architecture

### Core Technologies
- **Platform**: Flutter/Dart for web development
- **Architecture**: MVVM pattern with GameViewModel and GameStateViewModel
- **Performance**: 60 FPS game loop with delta time calculations
- **Physics**: Custom 2D physics engine with Vector mathematics
- **State Management**: Comprehensive game state system (playing, paused, completed, etc.)

### Game Features
- **Audio System**: Tier-based background music and sound effects with volume controls
- **Analytics**: Player statistics tracking and level progression
- **Web Deployment**: Firebase hosting with automated build pipeline
- **User Experience**: Screenshot downloads, persistent settings, responsive design

### Web Development Skills Demonstrated
- **Flutter Web Framework**: Complete web game development from concept to deployment
- **Game Loop Architecture**: Real-time 60 FPS performance optimization in browser
- **Physics Programming**: Custom collision detection and movement calculations
- **State Management**: Complex game state handling across multiple screens
- **Audio Integration**: Web audio handling with browser compatibility and volume controls
- **Web Publishing**: Firebase hosting with automated build pipeline
- **User Analytics**: Player behavior tracking and game progression statistics

## Project Impact

- **Complete Product**: Full-featured game with 36 levels across 4 difficulty tiers
- **Published Game**: Successfully deployed to web platform with Firebase
- **Educational Value**: Math learning tool combining entertainment with education
- **Technical Achievement**: Custom physics engine and smooth 60 FPS performance
- **User Experience**: Comprehensive UI/UX with settings, help, and analytics

## Skills Developed

### Web Game Development
- Flutter web framework for browser-based games
- Game architecture and design patterns
- Real-time performance optimization
- Physics engine development
- Audio system integration

### Software Engineering
- MVVM architecture implementation
- State management patterns
- Web deployment and hosting
- Automated build pipelines
- User analytics and tracking