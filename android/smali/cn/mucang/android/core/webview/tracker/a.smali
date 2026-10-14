.class public Lcn/mucang/android/core/webview/tracker/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/mucang/android/core/webview/tracker/Event;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/core/webview/tracker/Event;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/core/webview/tracker/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/webview/tracker/a;->b:Lcn/mucang/android/core/webview/tracker/Event;

    .line 4
    iput-wide p3, p0, Lcn/mucang/android/core/webview/tracker/a;->c:J

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/core/webview/tracker/Event;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/tracker/a;->b:Lcn/mucang/android/core/webview/tracker/Event;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/webview/tracker/a;->c:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/tracker/a;->a:Ljava/lang/String;

    return-object v0
.end method
