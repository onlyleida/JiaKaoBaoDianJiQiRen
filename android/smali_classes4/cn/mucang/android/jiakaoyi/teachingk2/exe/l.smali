.class public Lcn/mucang/android/jiakaoyi/teachingk2/exe/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;",
            ")Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->j()I

    move-result p1

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/l0;->a()I

    move-result p1

    .line 3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->grade:I

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->a:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    return v1

    .line 4
    :cond_1
    instance-of p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 5
    move-object p1, p2

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-eq v2, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ne p1, v2, :cond_3

    return v1

    .line 6
    :cond_3
    instance-of p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    if-eqz p1, :cond_5

    .line 7
    move-object p1, p2

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->q:Z

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-eq v2, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-ne p1, v2, :cond_5

    return v1

    .line 8
    :cond_5
    instance-of p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    if-eqz p1, :cond_7

    .line 9
    move-object p1, p2

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->p:Z

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-eq v2, v1, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-ne p1, v2, :cond_7

    return v1

    .line 10
    :cond_7
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/f0;->b:Ljava/util/Set;

    if-eqz p1, :cond_9

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v1

    .line 12
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceBindId:Ljava/lang/String;

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_a

    return v1

    .line 13
    :cond_9
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->f(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    return v1

    :cond_a
    return v0
.end method
