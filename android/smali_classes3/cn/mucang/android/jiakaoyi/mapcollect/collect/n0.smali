.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final synthetic c:Z

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

.field public final synthetic e:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;Lcn/mucang/android/jiakaoyi/engine/model/Step;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->b:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->c:Z

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->b:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->c:Z

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->d:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/n0;->e:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->J(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZLcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method
