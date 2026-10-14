.class public final Lnet/surina/soundtouch/SoundTouch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "soundtouch"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnet/surina/soundtouch/SoundTouch;->a:J

    .line 3
    invoke-static {}, Lnet/surina/soundtouch/SoundTouch;->newInstance()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/surina/soundtouch/SoundTouch;->a:J

    return-void
.end method

.method private final native deleteInstance(J)V
.end method

.method public static final native getErrorString()Ljava/lang/String;
.end method

.method public static final native getVersionString()Ljava/lang/String;
.end method

.method private static final native newInstance()J
.end method

.method private final native processFile(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private final native setPitchSemiTones(JF)V
.end method

.method private final native setSpeed(JF)V
.end method

.method private final native setTempo(JF)V
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/surina/soundtouch/SoundTouch;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lnet/surina/soundtouch/SoundTouch;->processFile(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/surina/soundtouch/SoundTouch;->a:J

    invoke-direct {p0, v0, v1, p1}, Lnet/surina/soundtouch/SoundTouch;->setTempo(JF)V

    return-void
.end method
