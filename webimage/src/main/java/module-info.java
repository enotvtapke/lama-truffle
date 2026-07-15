module lamawasm {
    requires org.graalvm.polyglot;
    requires org.graalvm.webimage.api;
    // Pull the Lama language (and transitively truffle-api) into the module
    // graph so native-image bakes it into the image. The language is otherwise
    // only discovered via the TruffleLanguageProvider service, which native-image
    // does not follow on its own, leaving Context.eval with no language.
    requires org.graalvm.lama;
}
