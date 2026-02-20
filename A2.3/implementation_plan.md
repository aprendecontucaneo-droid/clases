
# Implementation Plan - Subjunctive Presentation Enhancements

This plan outlines the changes required to address the user's feedback effectively, focusing on visual improvements, game mechanics, and content clarity across four specific slides.

## User Goals
1.  **Enhance Aesthetics:** Add color and depth to the "Detectives del Subjuntivo" slide.
2.  **Gamification:** Transform "El Laberinto" into a progressive 7-level multiple-choice game with win/loss states, animations, and sound.
3.  **Clarity:** Make the "Mapa Mental" (Summary) slide more concrete and detailed for better understanding.
4.  **Layout Improvement:** Improve the diagramming/layout of the "Desafío Creativo Final" slide.

## Proposed Changes

### 1. "Detectives del Subjuntivo" Slide (Visual Polish)
*   **Current State:** Functional text-based interaction, perceived as "flat".
*   **Modification:**
    *   Maintain the "Case File" notebook aesthetic but enhance opacity/contrast.
    *   Add color-coded accents for the tabs (Emerald, Blue, Purple) to match the cases.
    *   Add subtle shadows and paper textures (using CSS gradients/patterns) to the "paper" elements.
    *   Highlight key instructions with an icon/banner.

### 2. "El Laberinto" (Game Logic Overhaul)
*   **Current State:** Simple 3-column choice selection (static).
*   **Modification:** Replace the static HTML content with a **React-based Game Component** (`<LaberintoGame />`).
*   **Game Specs:**
    *   **Structure:** 7 progressive levels.
    *   **Difficulty:**
        *   Lvl 1-2: Basic Triggers (Quiero que, Es necesario que).
        *   Lvl 3-4: Adjectival/ESCAPA (Busco algo que, Para que).
        *   Lvl 5-6: Time/Nuance (Cuando, Aunque).
        *   Lvl 7: Master Challenge (Mixed/Tricky).
    *   **Mechanics:**
        *   3 Lives (Hearts). Lose one on error.
        *   Timer per question (optional, but requested "animations/music/challenge" - usually timer adds pressure, but user asked for "lose state"). Let's stick to Lives for simplicity and stress-free learning, or a clear "Game Over" screen.
        *   Sound effects for Correct/Incorrect.
        *   Progress bar.

### 3. "Mapa Mental Subjuntivo" (Content Restructuring)
*   **Current State:** 3 columns with some text, user finds it unclear.
*   **Modification:**
    *   Adopt a "Flowchart" or "Formula" approach.
    *   **Formula:** Trigger (Indicative) + **QUE** + Change of Subject + **SUBJUNCTIVE**.
    *   Create 3 distinct horizontal or vertical sections with concrete "If/Then" logic.
    *   **Section 1: The Heart (Wishes/Emotions)** -> "Quiero que...".
    *   **Section 2: The Ghost (Unknowns)** -> "Busco alguien que...".
    *   **Section 3: The Clock (Pending Time)** -> "Cuando...".
    *   Use contrasting colors for the "Trigger" vs the "Subjunctive Verb".

### 4. "Desafío Creativo Final" (Layout Fix)
*   **Current State:** Grid of 3 boxes + Textarea.
*   **Modification:**
    *   "Future Vision Board" Theme.
    *   Style the requirements (Adjetiva, Nominal, Adverbial) as "Mission Objectives" (Checklist style).
    *   Make the Textarea look like a high-quality journal entry or digital pad.
    *   Integrate the "Submit" button better.

## 2. "Crónicas del Tiempo" (New Slide Designs)
### 1. "El Mapa del Tesoro" (Slide: Comparison of Past Tenses)
*   **Current State:** Likely static text or simple comparison requiring more detail.
*   **Modification:** Implement the "Map" metaphor.
    *   **Visuals:** Treasure island map background or aesthetic.
    *   **El Puente (Pretérito Perfecto):** "Connected to Now". Space OPEN. "He comido". (Key: Recent Past).
    *   **La Foto (Pretérito Indefinido):** "Snapshot of the Past". Space CLOSED. "Comí". (Key: Finished Action, Specific Time).
    *   **La Película (Pretérito Imperfecto):** "Background/Context". Ongoing/Repeated. "Comía". (Key: Description, Habit).
    *   **Diagramming:** 3 distinct cards with icons (Link, Camera, Film Reel).

### 2. "El Duelo del Tiempo" (Slide: Vivo vs Muerto)
*   **Current State:** Comparison of time markers.
*   **Modification:** "Duel" concept.
    *   **Visuals:** Split screen "Versus" style.
    *   **Left Side (VIVO/ABIERTO):** Green theme. Open lock icon. Words: "Hoy, Esta semana, Últimamente". *Connects to present*. (Perfecto).
    *   **Right Side (MUERTO/CERRADO):** Red theme. Closed lock icon. Words: "Ayer, El año pasado, Anoche". *Disconnected from present*. (Indefinido).
    *   **Interaction:** Drag and drop time markers into the correct zone (optional) or clear static comparison.

### 3. "El Semáforo del Tiempo" (New Request)
*   **Current State:** Traffic light concept, needs better diagramming and explanation.
*   **Modification:**
    *   **Visuals:** A detailed Traffic Light visualization (Vertical or horizontal).
    *   **RED (Terminado/Indefinido):** "STOP! The time is closed." (Ayer, Anoche).
    *   **GREEN (Abierto/Perfecto):** "GO! The time is open/continuing." (Hoy, Esta semana).
    *   **YELLOW (Repetido/Imperfecto):** "CAUTION/SLOW! Description or Habit in progress." (Antes, Siempre).
    *   **Layout:** Enhance the 3-column grid with clearer headers, "Stop/Go/Yield" badges, and better contrast.

## Execution Steps

1.  **Refactor "Detectives" Slide (A2.3):** Update HTML/CSS for depth and color. (DONE)
2.  **Refactor "Mapa Mental" Slide (A2.3):** Rewrite HTML for clarity and better examples. (DONE)
3.  **Refactor "El Laberinto" Slide (A2.3):** Replace content with a `div id="laberinto-root"` and implementing the React component.
4.  **Refactor "Desafío Final" Slide (A2.3):** Update HTML styling for better composition.
5.  **Refactor "Mapa del Tesoro" Slide (Cronicas):** Implement 3-card layout (Bridge/Photo/Movie).
6.  **Refactor "Duelo del Tiempo" Slide (Cronicas):** Implement Split Screen layout (Vivo vs Muerto).
7.  **Refactor "Semáforo del Tiempo" Slide (Cronicas):** Implement Traffic Light layout.
8.  **Update React Scripts:** Add `LaberintoGame` logic to A2.3 script block.

