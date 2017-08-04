#!/usr/bin/env python
# coding: utf-8
import speech_recognition
from pydub import AudioSegment
sound = AudioSegment.from_file("temp/test.mp3")
sound.export("temp/test.flac", format="flac", bitrate="128k")
r=speech_recognition.Recognizer()
with speech_recognition.AudioFile("test.flac") as source:
    audio = r.record(source)
    print r.recognize_google(audio, language='zh-cn')





