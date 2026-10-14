.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;->d:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/d0;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$a;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    return-void
.end method
