.class public final synthetic Lcn/mucang/android/download/service/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/download/service/DownloadService;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/download/service/DownloadService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/download/service/e;->a:Lcn/mucang/android/download/service/DownloadService;

    iput-object p2, p0, Lcn/mucang/android/download/service/e;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/download/service/e;->a:Lcn/mucang/android/download/service/DownloadService;

    iget-object v1, p0, Lcn/mucang/android/download/service/e;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcn/mucang/android/download/service/DownloadService;->f(Landroid/content/Intent;)V

    return-void
.end method
