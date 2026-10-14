.class public final enum Lcn/mucang/android/core/webview/core/ContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/core/webview/core/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/core/webview/core/ContentType;

.field public static final enum AUDIO:Lcn/mucang/android/core/webview/core/ContentType;

.field public static final enum IMAGE:Lcn/mucang/android/core/webview/core/ContentType;

.field public static final enum VIDEO:Lcn/mucang/android/core/webview/core/ContentType;


# instance fields
.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/core/ContentType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    const-string v3, "image/*"

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/core/webview/core/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/core/webview/core/ContentType;->IMAGE:Lcn/mucang/android/core/webview/core/ContentType;

    .line 2
    new-instance v1, Lcn/mucang/android/core/webview/core/ContentType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    const-string v5, "video/*"

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/core/webview/core/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/mucang/android/core/webview/core/ContentType;->VIDEO:Lcn/mucang/android/core/webview/core/ContentType;

    .line 3
    new-instance v3, Lcn/mucang/android/core/webview/core/ContentType;

    const-string v5, "AUDIO"

    const/4 v6, 0x2

    const-string v7, "audio/*"

    invoke-direct {v3, v5, v6, v7}, Lcn/mucang/android/core/webview/core/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/mucang/android/core/webview/core/ContentType;->AUDIO:Lcn/mucang/android/core/webview/core/ContentType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/core/webview/core/ContentType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/core/webview/core/ContentType;->$VALUES:[Lcn/mucang/android/core/webview/core/ContentType;

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
    iput-object p3, p0, Lcn/mucang/android/core/webview/core/ContentType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/core/webview/core/ContentType;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/core/webview/core/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/core/webview/core/ContentType;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/core/webview/core/ContentType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/webview/core/ContentType;->$VALUES:[Lcn/mucang/android/core/webview/core/ContentType;

    invoke-virtual {v0}, [Lcn/mucang/android/core/webview/core/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/core/webview/core/ContentType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/ContentType;->type:Ljava/lang/String;

    return-object v0
.end method
