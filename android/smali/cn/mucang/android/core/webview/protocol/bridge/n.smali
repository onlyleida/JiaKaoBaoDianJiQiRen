.class public final synthetic Lcn/mucang/android/core/webview/protocol/bridge/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/core/d$a;


# static fields
.field public static final synthetic a:Lcn/mucang/android/core/webview/protocol/bridge/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/webview/protocol/bridge/n;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/protocol/bridge/n;-><init>()V

    sput-object v0, Lcn/mucang/android/core/webview/protocol/bridge/n;->a:Lcn/mucang/android/core/webview/protocol/bridge/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcn/mucang/android/core/webview/protocol/bridge/NativeJsBridge;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
