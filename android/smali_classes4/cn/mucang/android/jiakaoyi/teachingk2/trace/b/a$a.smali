.class Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->e(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->c(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)[J

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->e(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)[J

    move-result-object v3

    aget-wide v4, v3, v1

    invoke-static {v2, v4, v5}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 5
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;->open:Z

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;->d(Lcn/mucang/android/jiakaoyi/teachingk2/trace/b/a;)I

    return-void
.end method
