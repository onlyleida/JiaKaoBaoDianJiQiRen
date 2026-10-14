.class public final synthetic Lcn/mucang/android/core/webview/core/page/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/webview/core/page/AsteroidManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/webview/core/page/AsteroidManager;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/c;->a:Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    iput-object p2, p0, Lcn/mucang/android/core/webview/core/page/c;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcn/mucang/android/core/webview/core/page/c;->c:J

    iput-object p5, p0, Lcn/mucang/android/core/webview/core/page/c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/mucang/android/core/webview/core/page/c;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/c;->a:Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    iget-object v1, p0, Lcn/mucang/android/core/webview/core/page/c;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcn/mucang/android/core/webview/core/page/c;->c:J

    iget-object v4, p0, Lcn/mucang/android/core/webview/core/page/c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcn/mucang/android/core/webview/core/page/c;->e:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->f(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
