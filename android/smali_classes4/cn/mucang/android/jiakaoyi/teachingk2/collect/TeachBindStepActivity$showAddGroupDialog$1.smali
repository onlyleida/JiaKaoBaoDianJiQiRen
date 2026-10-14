.class final Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;->N(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/String;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "group",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->$boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 8

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;->getStep()I

    move-result v1

    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;->getStepDirection()I

    move-result v2

    :goto_1
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getKey(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->$boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    const-string v3, "map"

    .line 3
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-static {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;Z)V

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "\u4e0d\u9650\u65b9\u6848"

    .line 9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->$boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 13
    invoke-static {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;Z)V

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$showAddGroupDialog$1;->$boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/lang/String;)V

    return-void
.end method
