.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final synthetic d:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;->d:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->Q(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/app/ProgressDialog;)V

    return-void
.end method
