package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.dsl.TypeSystem;
import com.oracle.truffle.sl.runtime.lama.LamaArray;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;
import com.oracle.truffle.sl.runtime.lama.LamaSExpr;
import com.oracle.truffle.sl.runtime.lama.LamaString;

@TypeSystem({long.class, LamaString.class, LamaFunction.class, LamaArray.class, LamaSExpr.class})
public abstract class LamaTypes { }
