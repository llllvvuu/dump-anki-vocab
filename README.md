# Dump Anki Vocab

Requirements:
- [Anki Connect](https://foosoft.net/projects/anki-connect/index.html)
- [`jq`](https://jqlang.github.io/jq/download/)

Usage:
```sh
sh dump_anki_vocab.sh <NAME_OF_DECK> <NAME_OF_FIELD>
```

## Use-case: ChatGPT

```sh
sh dump_anki_vocab.sh Chinese Character | pbcopy
```

> Let's have a conversation using my vocabulary: {paste}

This can create a pretty long prompt so you may need to use chat API with a long context window.
