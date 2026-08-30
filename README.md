# Truth & Beauty AO Remote Control

The Truth & Beauty AO Remote Control is an enhanced ZHAO II based Animation Overrider (AO) with chat commands and gestures to control the AO. The animations, gestures, scripts, and notecards are all full perm, Copy/Modify/Transfer.

The AO Remote Control allows you to control any ZHAO II based Animation Overrider with gestures or chat commands. Most AO's in Second Life are based on the ZHAO II AO engine created and released under the GPL v2 license by Ziggy Puff. This includes the popular Vista Animations AOs. Any ZHAO II based AO can be controlled using the 'ZHAO Interface', chat commands, and the included gestures.

A preloaded ZHAO II Animation Overrider is included as an example AO. This fully functional AO is free, full perm, and has been preconfigured with the 'ZHAO Interface' script for use with the remote control gestures and chat commands. You are free to use, copy, and modify this example AO.

## Table of Contents

- [Getting Started](#getting-started)
- [ZHAO Interface script](#zhao-interface-script)
  - [Vista Animations AO](#vista-animations-ao)
- [AO Control Gestures](#ao-control-gestures)

## Getting Started

The quickest way to setup a ZHAO II based Animation Overrider (AO) with
remote control commands enabled is to wear the Truth &amp; Beauty AO
included with the product. This example AO is fully functional and
preconfigured with the ZHAO Interface script.

If you prefer to customize an existing AO rather than using the Truth &amp;
Beauty AO then drag and drop the `ZHAO Interface` script into the Contents
tab of a ZHAO II based AO.

### How to Customize your Existing AO

Any ZHAO II based AO can be customized with the `ZHAO Interface` script.
Simply drag and drop the script into the Contents tab of the AO:

1. If you are wearing an AO, detach it.
1. Find the AO in your inventory. If you have multiple AOs, find the right one that you want to edit.
1. Make sure you are on land where you can rez objects. If you are not sure, go to a sandbox.
1. Drag the AO from your inventory onto the ground.
1. Right click the AO on the ground and select `Edit` 
1. In the Edit window, click the `Content` tab. You may need to click the double right arrows (>>) on the right side of the window to see the Content tab.
1. Locate the `ZHAO Interface` script in your inventory.
1. Drag the ZHAO Interface script from your inventory into the Content tab or the Edit window.
1. Close the Edit window.
1. Take the AO back into your inventory.
1. Wear the AO.

The customized AO can now be controlled using the gestures and chat commands described below.

## ZHAO Interface script

The `zhao_interface.lsl` script provides an interface between a ZHAO based
Animation Overrider (AO) and commands given on a private chat channel.

Drag and drop `ZHAO Interface` into the Contents tab of a ZHAO based AO.

Use the accompanying gestures to issue commands to the ZHAO AO.

For example, once the `ZHAO Interface` script is copied into the AO
and the gestures are activated, to enable the AO the owner can type
`/aoon` in local chat. To disable the AO, the owner can type `/aooff`
in local chat. The gestures translate these local chat triggers into
the appropriate command on the private channel.

Not all commands can be performed with gestures. Commands that require an
argument like loading a notecard or setting the stand time must be executed
by chatting directly on the listen channel. The `ZHAO Interface` script listens
on channel 935840. This channel can be used to send commands to the AO directly,
bypassing the gestures. For example, to load a notecard named `AO.MyDefaults`
send the following in chat:

```
/935840 aoload AO.MyDefaults
```

To set the stand time to 60 seconds send the following in chat:

```
/935840 aostandtime 60
```

When chatting directly on the `ZHAO Interface` channel it is not necessary to
activate the gestures. All of the supported AO commands can be performed in this
manner. The gestures are provided as a convenience. For example, the AO can be
enabled with either of these:

```
/935840 aoon
```

or, if the `AO ON` gesture is activated:

```
/aoon
```

### Vista Animations AO

The Vista animation overriders in Second Life are based on the ZHAO-II engine
(by Ziggy Puff, mod by Marcus Gray, Johann Ehrler and Moeka Kohime) and the
Vista AOs that were tested contain the ZHAO-II-core MGJEmod 1.1.9 script.

The Vista Animations creator does not disclose the GPLv2 source as required
by the license. Most of the AO's in Second Life are based on the ZHAO engine.
It is rare to find a ZHAO based AO that complies with the terms of the GPL license.
Vista is not alone in violating these terms, almost all AO providers do not
comply with the terms of the GPL licensed ZHAO AO engine from which they were derived.

However, the header of the ZHAO-II-core MGJEmod 1.1.9 script mentions the following:

```lsl
// ZHAO-II-core - Ziggy Puff, 07/07
//
/////////////////////////////////////////////////////////////////////////////////////////////////////
// Main engine script - receives link messages from any interface script. Handles the core AO work
//
// Interface definition: The following link_message commands are handled by this script. All of 
// these are sent in the string field. All other fields are ignored
//
// ZHAO_RESET                          Reset script
// ZHAO_LOAD|<notecardName>            Load specified notecard
// ZHAO_NEXTSTAND                      Switch to next stand
// ZHAO_STANDTIME|<time>               Time between stands. Specified in seconds, expects an integer.
//                                     0 turns it off
// ZHAO_AOON                           AO On
// ZHAO_AOOFF                          AO Off
// ZHAO_SITON                          Sit On
// ZHAO_SITOFF                         Sit Off
// ZHAO_RANDOMSTANDS                   Stands cycle randomly
// ZHAO_SEQUENTIALSTANDS               Stands cycle sequentially
// ZHAO_SETTINGS                       Prints status
// ZHAO_SITS                           Select a sit
// ZHAO_GROUNDSITS                     Select a ground sit
// ZHAO_WALKS                          Select a walk
//
// ZHAO_SITANYWHERE_ON                 Sit Anywhere mod On 
// ZHAO_SITANYWHERE_OFF                Sit Anywhere mod Off 
//
// ZHAO_TYPE_ON                        Typing AO On 
// ZHAO_TYPE_OFF                       Typing AO Off 
//
// ZHAO_TYPEKILL_ON                    Typing Killer On 
// ZHAO_TYPEKILL_OFF                   Typing Killer Off 
//
// So, to send a command to the ZHAO-II engine, send a linked message:
//
//   llMessageLinked(LINK_SET, 0, "ZHAO_AOON", NULL_KEY);
```

Using these specifications the Truth &amp; Beauty Lab created a ZHAO Interface
script which allows remote control of ZHAO based AO's.

## AO Control Gestures

The Truth &amp; Beauty Lab provides gestures as a convenient way to control a ZHAO
Interface enabled AO. The following gestures and their trigger phrases are provided:

| Gesture Name | Trigger Phrase | Description |
| ------------ | -------------- | ----------- |
| AO AOON      | /aoon          |   AO On |
| AO AOOFF     | /aooff         |   AO Off |
| AO SITON     | /aositon       |   Sit On |
| AO SITOFF    | /aositoff      |   Sit Off |
| AO RESET     | /aoreset       |   Reset script |
| AO LOAD      | /aoload &lt;notecard name&gt; | Load specified notecard |
| AO NEXTSTAND | /aonext        |   Switch to next stand |
| AO STANDTIME | /aostand &lt;time&gt;  | Time between stands. Specified in seconds, expects an integer. |
| AO RANDOMSTANDS | /aorandom   |   Stands cycle randomly |
| AO SEQUENTIALSTANDS | /aoseq  |   Stands cycle sequentially |
| AO SETTINGS  | /aosettings    |   Prints status |
| AO SITS      | /aosits        |   Select a sit |
| AO GROUNDSITS | /aogroundsits |   Select a ground sit |
| AO WALKS     | /aowalks       |   Select a walk |
| AO SITANYWHERE_ON | /aositanyon | Sit Anywhere mod On  |
| AO SITANYWHERE_OFF | /aositanyoff | Sit Anywhere mod Off  |
| AO TYPE_ON   | /aotypeon      |   Typing AO On  |
| AO TYPE_OFF  | /aotypeoff     |   Typing AO Off  |
| AO TYPEKILL_ON | /aotypekillon |  Typing Killer On | 
| AO TYPEKILL_OFF | /aotypekilloff | Typing Killer Off  |
