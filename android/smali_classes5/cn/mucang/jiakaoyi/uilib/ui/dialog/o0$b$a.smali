.class Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->g(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

.field final synthetic c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;Landroid/view/View;Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic c()V
    .locals 1

    const-string v0, "\u89e3\u538b\u5f02\u5e38"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d()V
    .locals 1

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->enable:Z

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object p2

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->name:Ljava/lang/String;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->packId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->version:I

    invoke-virtual {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->b(Ljava/lang/String;Ljava/lang/Long;I)V

    .line 4
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->f(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->f(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;)Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic g(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->d(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;Z)Z

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a$a;

    invoke-direct {v0, p0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/i/a;->b(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Lcn/mucang/android/jiakaoyi/framework/h/b;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/t0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 8
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/b0;

    invoke-direct {p1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/b0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u89e3\u538b\u5f02\u5e38 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 12
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/e0;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/e0;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/f0;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/f0;

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->d(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;Z)Z

    return-void
.end method

.method private synthetic i(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Lcn/mucang/android/account/ui/a;)V
    .locals 9

    const-string v0, "\u542f\u7528\u8bed\u97f3\u5305\u5931\u8d25"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u70b9\u51fb\u542f\u7528\u8bed\u97f3\u5305: name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ; packId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->packId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/i/m;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/i/m;-><init>()V

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->e(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;)J

    move-result-wide v3

    const/4 v5, 0x2

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->packId:J

    iget-object v8, p1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->name:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcn/mucang/jiakaoyi/uilib/i/m;->n(JIJLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c0;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a;

    invoke-direct {p1, p3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a;-><init>(Lcn/mucang/android/account/ui/a;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u542f\u7528\u8bed\u97f3\u5305\u62a5\u9519 "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a;

    invoke-direct {p1, p3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a;-><init>(Lcn/mucang/android/account/ui/a;)V

    :goto_1
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a;

    invoke-direct {p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a;-><init>(Lcn/mucang/android/account/ui/a;)V

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    throw p1
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->a()V

    return-void
.end method

.method public synthetic f(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->e(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V

    return-void
.end method

.method public synthetic h(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->g(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic j(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Lcn/mucang/android/account/ui/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->i(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Lcn/mucang/android/account/ui/a;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->c:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->c(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d\u4e2d"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/m;->i(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->fileSize:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->packId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;->filePath:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->a:Landroid/view/View;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;

    invoke-direct {v3, p0, v1, v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u5185\u5b58\u5361\u7a7a\u95f4\u4e0d\u8db3"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 9
    new-instance v0, Lcn/mucang/android/account/ui/a;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/mucang/android/account/ui/a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u542f\u7528\u4e2d..."

    .line 10
    invoke-virtual {v0, v1}, Lcn/mucang/android/account/ui/a;->b(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->a:Landroid/view/View;

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a0;

    invoke-direct {v3, p0, v1, v2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/a0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Lcn/mucang/android/account/ui/a;)V

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->b(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
