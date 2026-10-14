.class public Lcn/mucang/android/facelib/w/b/a;
.super Lcn/mucang/android/facelib/w/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FaceData:",
        "Ljava/lang/Object;",
        "UserData:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/mucang/android/facelib/w/a/a;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUserData;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/android/facelib/w/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/facelib/w/a/b<",
            "TFaceData;>;"
        }
    .end annotation
.end field

.field private final e:Lcn/mucang/android/facelib/w/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/facelib/w/a/c<",
            "TFaceData;TUserData;>;"
        }
    .end annotation
.end field

.field private final f:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcn/mucang/android/facelib/w/a/b;Lcn/mucang/android/facelib/w/a/c;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUserData;",
            "Lcn/mucang/android/facelib/w/a/b<",
            "TFaceData;>;",
            "Lcn/mucang/android/facelib/w/a/c<",
            "TFaceData;TUserData;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/facelib/w/a/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/facelib/w/b/a;->c:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/facelib/w/b/a;->d:Lcn/mucang/android/facelib/w/a/b;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/facelib/w/b/a;->e:Lcn/mucang/android/facelib/w/a/c;

    .line 5
    iput-wide p4, p0, Lcn/mucang/android/facelib/w/b/a;->f:J

    return-void
.end method

.method private c(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/facelib/w/b/a;->d:Lcn/mucang/android/facelib/w/a/b;

    invoke-interface {v0, p1}, Lcn/mucang/android/facelib/w/a/b;->a(Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/facelib/w/b/a;->e:Lcn/mucang/android/facelib/w/a/c;

    iget-object v1, p0, Lcn/mucang/android/facelib/w/b/a;->c:Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p2}, Lcn/mucang/android/facelib/w/a/c;->b(Ljava/lang/Object;Ljava/lang/Object;Lcn/mucang/jiakaoyi/uilib/login/face/m;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/facelib/w/a/a;->b()V

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/facelib/w/a/a;->b:J

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcn/mucang/android/facelib/w/a/a;->b:J

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/facelib/w/a/a;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcn/mucang/android/facelib/w/a/a;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcn/mucang/android/facelib/w/b/a;->f:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    return-void

    .line 4
    :cond_1
    iput-wide v0, p0, Lcn/mucang/android/facelib/w/a/a;->b:J

    .line 5
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/facelib/w/b/a;->c(Landroid/graphics/Bitmap;Lcn/mucang/jiakaoyi/uilib/login/face/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcn/mucang/android/facelib/w/a/a;->b:J

    :goto_0
    return-void
.end method
