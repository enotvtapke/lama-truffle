package com.oracle.truffle.lama.nodes;

import com.oracle.truffle.api.dsl.TypeSystem;
import com.oracle.truffle.lama.runtime.LamaArray;
import com.oracle.truffle.lama.runtime.LamaFunction;
import com.oracle.truffle.lama.runtime.LamaSExpr;
import com.oracle.truffle.lama.runtime.LamaString;

@TypeSystem({long.class, LamaString.class, LamaFunction.class, LamaArray.class, LamaSExpr.class})
public abstract class LamaTypes { }
