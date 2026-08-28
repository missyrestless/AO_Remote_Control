# AO Remote Control

Control a ZHAO based Animation Overrider with Gestures.

## ZHAO Interface script

The `zhao_interface.lsl` script provides an interface between a ZHAO based
Animation Overrider (AO) and commands given on a private chat channel.

Drag and drop `zhao_interface` into the Contents tab of a ZHAO based AO.

Use the accompanying gestures to issue commands to the ZHAO AO

For example, once the gestures are activated, to enable the AO,
the owner can type `/aoon` in local chat. To disable the AO, owner
can type `/aooff` in local chat. The gestures translate these local
chat triggers into the appropriate command on the private channel.

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
