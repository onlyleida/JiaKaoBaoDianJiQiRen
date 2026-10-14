.class public Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/d;
.super Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->DaoKu_Right:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)V

    return-void
.end method


# virtual methods
.method protected g()Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/teachingk2/v0/a<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1, v2, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/e;

    sget-object v5, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-direct {v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;

    sget-object v6, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    invoke-direct {v2, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/a;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/a;-><init>()V

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v8
.end method
