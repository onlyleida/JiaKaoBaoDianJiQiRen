.class final Lcn/mucang/jiakaoyi/uilib/q/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/utils/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/q/h;->n(JLjava/lang/String;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/q/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/q/h$b;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/q/h$b;Ljava/io/File;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->a:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->b:Ljava/io/File;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->a:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/q/h$b;->a(F)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->b:Ljava/io/File;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/h0;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverDownload \u4e0b\u8f7d\u5b8c\u6210 fileMd5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ; \u4e0b\u8f7d fileMD5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->d:J

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->b:Ljava/io/File;

    invoke-static {v1, v2, v3, v0}, Lcn/mucang/jiakaoyi/uilib/q/h;->a(JLjava/io/File;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->a:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 7
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->b:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/q/h$b;->b(ZLjava/io/File;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->d:J

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->a:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/q/h;->b(JLcn/mucang/jiakaoyi/uilib/q/h$b;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverDownload \u4e0b\u8f7d\u5b8c\u6210 \u6587\u4ef6\u4e0d\u5b58\u5728 downloadEntityMd5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->d:J

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/q/h$a;->a:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/q/h;->b(JLcn/mucang/jiakaoyi/uilib/q/h$b;)V

    :cond_2
    :goto_0
    return-void
.end method
