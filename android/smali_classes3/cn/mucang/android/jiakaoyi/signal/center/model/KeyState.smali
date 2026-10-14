.class public final enum Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

.field public static final enum ACC:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

.field public static final enum Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

.field public static final enum Lock:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

.field public static final enum None:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

.field public static final enum ON:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

.field public static final enum Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

.field public static final states:[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;


# instance fields
.field public final desc:Ljava/lang/String;

.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "\u65e0\u6548"

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const-string v3, "None"

    const/4 v4, 0x1

    const-string v5, "\u65e0\u94a5\u5319"

    invoke-direct {v1, v3, v4, v2, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const-string v5, "Lock"

    const/4 v6, 0x2

    const-string v7, "\u7184\u706b"

    invoke-direct {v3, v5, v6, v4, v7}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Lock:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const-string v7, "ACC"

    const/4 v8, 0x3

    const-string v9, "acc"

    invoke-direct {v5, v7, v8, v6, v9}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ACC:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 5
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const-string v9, "ON"

    const/4 v10, 0x4

    const-string v11, "on"

    invoke-direct {v7, v9, v10, v8, v11}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ON:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 6
    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const-string v11, "Start"

    const/4 v12, 0x5

    const-string v13, "start"

    invoke-direct {v9, v11, v12, v10, v13}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->states:[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    move-result-object v0

    .line 10
    :goto_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->states:[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 11
    aget-object v3, v0, v2

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->id:I

    add-int/2addr v3, v4

    aget-object v5, v0, v2

    aput-object v5, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->id:I

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->desc:Ljava/lang/String;

    return-void
.end method

.method public static parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;
    .locals 2

    add-int/lit8 p0, p0, 0x1

    if-ltz p0, :cond_0

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->states:[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget-object p0, v0, p0

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    return-object v0
.end method


# virtual methods
.method public isStart()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->id:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ACC:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->id:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
