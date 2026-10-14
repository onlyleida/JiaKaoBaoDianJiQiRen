.class public Lorg/apache/commons/math3/ode/UnknownParameterException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1330546L


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNKNOWN_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/ode/UnknownParameterException;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/UnknownParameterException;->name:Ljava/lang/String;

    return-object v0
.end method
