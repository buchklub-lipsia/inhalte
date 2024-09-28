# Lies mich!

## Inhalt

1. Hinweise zum Format
    1. Schlüssel-Wert Paare (Attribute)
    2. Objekte
    3. Listen (Arrays)
    4. Einbettungen
2. Bedeutung der Dateien

## Hinweise zum Format

### Schlüssel-Wert Paare (Attribute)

Beim Bearbeiten der Quelltexte muss zwingend penibel genau auf das Format
»HJSON« geachtet werden. Im Prinzip handelt es sich geordnete Schlüssel-Wert
Paare. Geordnet bedeutet, dass diese Paare in Objekten oder Listen
zusammengefasst werden können. Jedes Paar wird in einer eigenen Textzeile definiert und folgt dem folgenden Schema:

```
schlüsselname: wert, der dem Schlüssel zugeordnet wird
```

Dabei ist der Doppelpunkt nach dem Schlüsselnamen Pflicht. Eine Ausnahme dieses
Schemas bilden Werte, die so lange sind, dass man sie auch mehrere Zeilen schreiben will:

```
schlüsselname: '''
    Der Wert, der dem Schlüssel zugeordnet wird.
    <br>Der ist in diesem Falle so lang, dass man ihn auf mehrere
    Zeilen verteilen will.'''
```

Zu beachten ist der auch hier verpflichtende Doppelpunkt nach dem Schlüsselnamen sowie:

1. Die drei einfachen Anführungszeichen ''' markieren den Start des mehrzeiligen Wertes. Sie sind verpflichtend.
2. Die Einrückung der Textzeilen dienen der besseren Lesbarkeit. Sie sind nicht verpflichtend.
3. Zeilennumbrüche im Wert werden auf der Website _nicht_ angezeigt. Will man
   einen Zeilenumbruch im Text auf der Webseite, schreibt man an diese Stelle <br> (wie im Beispiel)
4. Die schließenden drei einfachen Anführungszeichen ''' markieren das Ende des mehrzeiligen Wertes. Sie sind verpflichtend.

### Objekte

Objekte sind einfache Zusammenfassungen von Schlüssel-Wert Paaren. Auf diese
Weise werden bspw. die einzelnen Bücher definiert:

```
kapital_buch: {
    name: Das Kapital
    author: Karl Marx
}
```

Die öffnende geschweifte Klammer markiert den Anfang eines Objektes. Sie ist
verpflichtend. Die schließende geschweifte Klammer markiert das Ende des
Objektes, auch sie ist Pflicht. Alle Paare, die zwischen den beiden Klammern
stehen, sind Teil des Objekts.

### Listen (Arrays)

Listen sind ebenfalls Zusammenfassungen. Im Gegensatz zu Objekten fassen sie
allerdings keine Schlüssel-Wert Paare zusammen, sondern Werte ohne Namen:

```
früchte: [Apfel, Banane, Ananas]
```

### Einbettungen

Objekte und Listen lassen sich beliebig einbetten. Damit ist beispielsweise
`books.hjson` eine Liste von Objekten (nämlich den Büchern):

```
[ <- Markiert den Start der Liste
    { <- Markiert den Start des ersten Objektes (Buchs) in der Liste
        name: Lushins Verteidigung
        author: Vladimir Nabokov
    } <- Markiert das Ende des ersten Objekts (Buchs) in der Liste
    {
        name: Quecksilber
        author: Amélie Nothomb
    }
]
```

Die erklärenden Pfeile `<- ...` gehören natürlich nicht zu den Daten dazu und
dienen nur der Veranschaulichung.

## Bedeutung der Dateien

Die Inhalte der Website sind gesammelt in drei Dateien:

- `global.hjson`: Enthält globale Attribute der Website
- `books.hjson`: Enthält alle Bücher und die Bewertungen der Mitglieder
- `members.hjson`: Enthält alle Mitglieder und deren Infos

## Anleitung

Um die Inhalte der Website bearbeiten zu können, benötigt man ein kostenfreies Konto bei
github.com, das [hier](https://github.com/signup) erstellt werden kann. Sobald
man ein Konto hat, kann man vom Webmaster als Kollaborator hinzugefügt werden
(hierfür benötigt dieser den Namen des Kontos und/oder die E-Mail Adresse).

Als hinzugefügter Kollaborator kann man die Inhalte der Website bearbeiten.
Dazu navigiert man (am Rechner und bei GitHub angemeldet) zum
[Repository](https://www.github.com/buchklub-lipsia/inhalte) und drückt die
Punkt-Taste (.). Damit öffnet sich ein Text-Editor, in welchem man links die
Dateien auswählen und bearbeiten kann. Ist man fertig, so drückt man ganz links
auf das Symbol mit den drei Kreisen, die gegabelt miteinander verbunden sind
(und eine 1 unten rechts haben sollten; »Quellcodeverwaltung«). Nun gibt man
links bei »Nachricht« eine kurze Beschreibung der Veränderungen ein (bspw.
»Alex Mitglied-Infos geändert«) und drückt auf »Commit und Push« darunter. Nun
sind die Änderungen eingereicht und werden bald auf der Website erscheinen.
