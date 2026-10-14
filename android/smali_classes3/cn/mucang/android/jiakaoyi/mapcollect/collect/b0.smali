.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field public final synthetic f:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->d:Ljava/util/List;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->f:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->c:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->d:Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/b0;->f:Landroid/app/ProgressDialog;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->v(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/app/ProgressDialog;)V

    return-void
.end method
