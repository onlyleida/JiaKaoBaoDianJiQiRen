.class final Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory$formParams$friendlyString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZJZ)Lcn/mucang/android/core/webview/protocol/bridge/http/r/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/core/http/MucangNameValuePair;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/core/http/MucangNameValuePair;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory$formParams$friendlyString$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory$formParams$friendlyString$1;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory$formParams$friendlyString$1;-><init>()V

    sput-object v0, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory$formParams$friendlyString$1;->INSTANCE:Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory$formParams$friendlyString$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcn/mucang/android/core/http/MucangNameValuePair;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/core/http/MucangNameValuePair;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcn/mucang/android/core/http/MucangNameValuePair;

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeParamsFactory$formParams$friendlyString$1;->invoke(Lcn/mucang/android/core/http/MucangNameValuePair;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
