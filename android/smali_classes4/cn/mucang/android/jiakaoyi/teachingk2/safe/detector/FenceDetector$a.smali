.class Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;)V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->f:Ljava/util/List;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    .line 4
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    iget-wide v4, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-byte v3, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->enable:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->e:Z

    goto :goto_0

    .line 6
    :cond_3
    iget-byte v0, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->enable:B

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->b:Ljava/lang/String;

    iget-wide v3, p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    iput-boolean v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;->e:Z

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;)Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;

    :cond_4
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$a;->a(Lcn/mucang/jiakaoyi/uilib/socket/model/ProjectFenceModel;)V

    return-void
.end method
