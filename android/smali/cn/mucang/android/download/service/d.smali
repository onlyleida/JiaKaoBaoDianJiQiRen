.class public final synthetic Lcn/mucang/android/download/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/download/service/DownloadService;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/download/service/DownloadService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/download/service/d;->a:Lcn/mucang/android/download/service/DownloadService;

    iput-object p2, p0, Lcn/mucang/android/download/service/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/download/service/d;->a:Lcn/mucang/android/download/service/DownloadService;

    iget-object v1, p0, Lcn/mucang/android/download/service/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/download/service/DownloadService;->d(Ljava/lang/String;)V

    return-void
.end method
