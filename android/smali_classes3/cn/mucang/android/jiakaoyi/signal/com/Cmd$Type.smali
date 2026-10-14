.class public final enum Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/com/Cmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

.field public static final enum Ai:Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

.field public static final enum All:Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

.field public static final enum Gps:Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

.field public static final enum Master:Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;


# instance fields
.field public final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    const-string v1, "All"

    const/4 v2, 0x0

    const-string v3, "ALL"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;->All:Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    const-string v3, "Master"

    const/4 v4, 0x1

    const-string v5, "\u4e3b\u63a7"

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;->Master:Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    .line 3
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    const-string v5, "Gps"

    const/4 v6, 0x2

    const-string v7, "GPS"

    invoke-direct {v3, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;->Gps:Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    .line 4
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    const-string v7, "Ai"

    const/4 v8, 0x3

    const-string v9, "AI"

    invoke-direct {v5, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;->Ai:Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;->$VALUES:[Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    invoke-virtual {v0}, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/signal/com/Cmd$Type;

    return-object v0
.end method
