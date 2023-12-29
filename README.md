# SISSAletter

This repository contains a TeX class template for SISSA letter, migrated from the official Word template. See [main.pdf][main_pdf] as an example. 

## Usage

1. Clone or download this repository.
2. Edit the `main.tex` file in your preferred TeX editor, or use `\documentclass{SISSAletter}` at the beginning of your TeX document. 
  - If you are authorized to use the Arial font, you can use `\documentclass[Arial]{SISSAletter}`. You will need to install the Arial font in your system or put the TTF fonts in the `fonts` folder accordingly. 
3. Customize the template by modifying the relevant sections, such as the sender's information, the recipient's information, and the content of the letter. For details, see [Variables](#Variables).
4. Compile the TeX document to generate the PDF output.

## File Structure

- `main.tex`: The example TeX file containing the template code.
- `sissa_logo.pdf`, `sissa_name.pdf`: The SISSA logo images used in the template.
- `fonts/*`: The folder to include required fonts. 
- `README.md`: This README file.

## Variables

Use `\renewcommand` to customize the sender's information, the recipient's information, etc, in the SISSAletter template. i.e.

```latex
\renewcommand{\FromEmail}{\href{mailto:info@sissa.it}{info@sissa.it}}
```

The following variables can be customized in the template:

- `\FromName`: The name of the sender.
- `\FromAddress`: The address of the sender.
- `\FromTelephone`: The telephone number of the sender.
- `\FromEmail`: The email address of the sender.
- `\FromWWW`: The website URL of the sender.
- `\ToName`: The name of the recipient.
- `\ToAddress`: The address of the recipient.
- `\Protocol`: The protocol number.
- `\PlaceAndDate`: The place and date of the letter.

Using `\renewcommand{\FromInfo}{}` and `\renewcommand{\ToInfo}{}` will overwrite the whole sender info block or recipient info block.


## Dependencies

This TeX template requires the following dependencies:

- TeX typesetting engine: XeLaTeX or LuaTeX. Other typesetting engines may not be supported due to the use of `fontspec` package.
- Arial font (optional): The official template requires the use of the Arial font, which is not included in this template. The open-source alternative Libration Sans is provided as default and fallback. See [Comparison][Font_Comparison].

## License

I don't put extra license to this template. The original license belongs to [SISSA Medialab][SISSS_Medialab]. You are only authorized to use it when you are authorized to use the original Word template.

`sissa_logo.pdf` and `sissa_name.pdf` are from [SISSA Medialab][SISSS_Medialab]. To address any licensing issues, please contact them directly.

Liberation Sans is licensed under the SIL Open Font License, Version 1.1. For any details, see [EULA of Liberation Sans Regular][Liberation_Sans_Regular], [EULA of Liberation Sans Regular][Liberation_Sans_Regular], [EULA of Liberation Sans Regular][Liberation_Sans_Regular] and [EULA of Liberation Sans Regular][Liberation_Sans_Regular].

## Contributing

Contributions to this template are welcome. Feel free to create a pull request.

## Acknowledgements

- The SISSA Letterhead design is based on the original design by [SISSA Medialab][SISSS_Medialab].
- This TeX template was created by Bingying Lu.

## Contact

For any questions or issues, please do not contact blu@sissa.it.

[main_pdf]: ./main.pdf
[Font_Comparison]: https://en.wikipedia.org/w/index.php?title=Liberation_fonts&oldid=1168118643#/media/File:Font_Comparison_-_Liberation_Sans_to_Arial.svg
[SISSS_Medialab]: https://www.sissa.it/media-and-press
[Liberation_Sans_Regular]: https://fonts.adobe.com/variations/31/eula
[Liberation_Sans_Bold]: https://fonts.adobe.com/variations/28/eula
[Liberation_Sans_Italic]: https://fonts.adobe.com/variations/30/eula
[Liberation_Sans_Bold_Italic]: https://fonts.adobe.com/variations/29/eula
