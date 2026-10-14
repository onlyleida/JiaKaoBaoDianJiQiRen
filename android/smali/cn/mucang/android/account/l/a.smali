.class public Lcn/mucang/android/account/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/mucang/android/account/l/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/account/l/a;

    invoke-direct {v0}, Lcn/mucang/android/account/l/a;-><init>()V

    sput-object v0, Lcn/mucang/android/account/l/a;->a:Lcn/mucang/android/account/l/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/mucang/android/account/l/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/account/l/a;->a:Lcn/mucang/android/account/l/a;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/webview/core/l;->d()Lcn/mucang/android/core/webview/core/l;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/account/l/a$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/account/l/a$a;-><init>(Lcn/mucang/android/account/l/a;)V

    const-string v2, "/user/onLoginSuccess"

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/core/webview/core/l;->i(Ljava/lang/String;Lcn/mucang/android/core/webview/core/d$a;)V

    return-void
.end method
