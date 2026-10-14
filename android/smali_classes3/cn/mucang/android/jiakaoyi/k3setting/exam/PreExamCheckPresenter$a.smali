.class Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 7

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->a(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;->ExamIng:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$State;

    if-eq v2, v3, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->b(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->f(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->Motor:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    move-result-object v2

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2, v4}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->i(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->j(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 8
    :cond_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->f(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/List;

    move-result-object v2

    sget-object v5, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->FingerPrint:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->s:Z

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    move-result-object v2

    if-ne v2, v5, :cond_2

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2, v4}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->i(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->j(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 13
    :cond_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->f(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/List;

    move-result-object v2

    sget-object v6, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;->CloseLight:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/h;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->g(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    move-result-object v2

    if-ne v2, v6, :cond_3

    .line 16
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2, v4}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->i(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    .line 17
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->j(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 18
    :cond_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->h(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$DialogState;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->b(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->f(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->k(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v2

    if-nez v2, :cond_5

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->l(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->b(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->f(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2, v5}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->k(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->s:Z

    if-nez v2, :cond_6

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->m(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->b(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void

    .line 26
    :cond_6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->f(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v2, v6}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->k(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/h;->a(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->n(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->b(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void

    .line 29
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->c(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->j(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V

    .line 31
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->b(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method
