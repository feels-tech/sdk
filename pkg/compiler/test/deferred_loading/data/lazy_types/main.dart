// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart = 2.7

import 'liba.dart' deferred as libA;
import 'libb.dart' deferred as libB;
import 'libc.dart' deferred as libC;

/*member: foo:
 constants=[
  FunctionConstant(callFooMethod)=1{libB},
  FunctionConstant(createB2)=2{libC},
  FunctionConstant(createC3)=2{libC},
  FunctionConstant(createD3)=2{libC},
  FunctionConstant(createDooFunFunFoo)=2{libC},
  FunctionConstant(isDooFunFunFoo)=1{libB},
  FunctionConstant(isFoo)=1{libB},
  FunctionConstant(isFoo)=2{libC},
  FunctionConstant(isFoo)=6{libA},
  FunctionConstant(isFunFunFoo)=1{libB},
  FunctionConstant(isFunFunFoo)=2{libC},
  FunctionConstant(isFunFunFoo)=6{libA},
  FunctionConstant(isMega)=6{libA}],
 member_unit=main{}
*/
void foo() async {
  await libA.loadLibrary();
  await libB.loadLibrary();
  await libC.loadLibrary();
  print((libA.isFoo)(null as dynamic));
  print((libA.isFunFunFoo)(null as dynamic));
  print((libA.isFoo)(null as dynamic));
  print((libA.isMega)(null as dynamic));

  print((libB.isFoo)(null as dynamic));
  print((libB.callFooMethod)());
  print((libB.isFunFunFoo)(null as dynamic));
  print((libB.isDooFunFunFoo)(null as dynamic));

  print((libC.isFoo)(null as dynamic));
  print((libC.isFunFunFoo)(null as dynamic));
  print((libC.createB2)());
  print((libC.createC3)());
  print((libC.createD3)());
  print((libC.createDooFunFunFoo)());
}

/*member: main:member_unit=main{}*/
main() {
  foo();
}
