.class public Lcn/mucang/android/core/config/gl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static s:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcn/mucang/android/core/config/gl;->s:[I

    return-void

    :array_0
    .array-data 4
        0x5b53
        0x564d
        0x8b6f
        0x4af6
        0x57ef
        0x84fd
        0x4a3a
        0x72d7
        0x7648
        0xfb0c
        0x8ff7
        0x4a0b
        0x8b7d
        0x6f63
        0x7648
        0x4b7f
        0x7128
        0xfb01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/config/gl;->s:[I

    return-object v0
.end method

.method static synthetic access$100([I)[C
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/config/gl;->gc([I)[C

    move-result-object p0

    return-object p0
.end method

.method private static gc([I)[C
    .locals 3

    .line 1
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget v2, p0, v1

    xor-int/lit16 v2, v2, 0x400

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static lg()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/config/gl$a;

    invoke-direct {v0}, Lcn/mucang/android/core/config/gl$a;-><init>()V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method
