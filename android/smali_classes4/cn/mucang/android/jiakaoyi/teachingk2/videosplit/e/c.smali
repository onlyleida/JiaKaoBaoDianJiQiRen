.class public Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/b;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/c;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
            "**>;)",
            "Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/c;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/c;->a:Z

    const/16 p1, 0xbb8

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;->create(I)Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/Segment;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->b:Z

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/videosplit/e/c;->a:Z

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
