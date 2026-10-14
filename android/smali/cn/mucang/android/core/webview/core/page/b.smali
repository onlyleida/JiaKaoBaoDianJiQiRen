.class public final synthetic Lcn/mucang/android/core/webview/core/page/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/webview/client/g$c;


# static fields
.field public static final synthetic a:Lcn/mucang/android/core/webview/core/page/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/webview/core/page/b;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/core/page/b;-><init>()V

    sput-object v0, Lcn/mucang/android/core/webview/core/page/b;->a:Lcn/mucang/android/core/webview/core/page/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->g(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
