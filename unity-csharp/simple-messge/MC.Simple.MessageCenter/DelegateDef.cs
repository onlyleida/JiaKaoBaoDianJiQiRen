namespace MC.Simple.MessageCenter;

public delegate void DelegateDef();
public delegate void DelegateDef<T>(T arg1);
public delegate void DelegateDef<T, U>(T arg1, U arg2);
public delegate void DelegateDef<T, U, V>(T arg1, U arg2, V arg3);
public delegate void DelegateDef<T, U, V, W>(T arg1, U arg2, V arg3, W atg4);
