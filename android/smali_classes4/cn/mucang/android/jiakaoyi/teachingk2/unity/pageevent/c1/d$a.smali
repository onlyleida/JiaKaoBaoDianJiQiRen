.class Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/android/jiakaoyi/engine/i/f/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->b:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->c:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;I)I

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-static {p1, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;J)J

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->c:I

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v0, v3, :cond_1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;->a:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;J)J

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    invoke-static {p1, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->b(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;J)J

    .line 7
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;->a(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d;I)I

    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/engine/i/f/a;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/c1/d$a;->a(Lcn/mucang/android/jiakaoyi/engine/i/f/a;)V

    return-void
.end method
