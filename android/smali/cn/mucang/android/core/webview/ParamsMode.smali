.class public final enum Lcn/mucang/android/core/webview/ParamsMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/core/webview/ParamsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/core/webview/ParamsMode;

.field public static final enum NONE:Lcn/mucang/android/core/webview/ParamsMode;

.field public static final enum WHITE_LIST:Lcn/mucang/android/core/webview/ParamsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/ParamsMode;

    const-string v1, "WHITE_LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/core/webview/ParamsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/core/webview/ParamsMode;->WHITE_LIST:Lcn/mucang/android/core/webview/ParamsMode;

    .line 2
    new-instance v1, Lcn/mucang/android/core/webview/ParamsMode;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/core/webview/ParamsMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/core/webview/ParamsMode;->NONE:Lcn/mucang/android/core/webview/ParamsMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/android/core/webview/ParamsMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/android/core/webview/ParamsMode;->$VALUES:[Lcn/mucang/android/core/webview/ParamsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/core/webview/ParamsMode;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/core/webview/ParamsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/core/webview/ParamsMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/core/webview/ParamsMode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/webview/ParamsMode;->$VALUES:[Lcn/mucang/android/core/webview/ParamsMode;

    invoke-virtual {v0}, [Lcn/mucang/android/core/webview/ParamsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/core/webview/ParamsMode;

    return-object v0
.end method
