.class final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/utils/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->h(ILcn/mucang/jiakaoyi/uilib/unityres/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcn/mucang/jiakaoyi/uilib/unityres/a$b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/io/File;ZLjava/lang/String;IILcn/mucang/jiakaoyi/uilib/unityres/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->b:Ljava/io/File;

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->c:Z

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->d:Ljava/lang/String;

    iput p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->e:I

    iput p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->f:I

    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->g:Lcn/mucang/jiakaoyi/uilib/unityres/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->c:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u65b0\u6587\u4ef6\u5df2\u4e0b\u8f7d\u597d\uff0c\u5220\u9664\u5b58\u5728\u7684\u65e7\u6587\u4ef6"

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->e:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->f:I

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h;->j(IILjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/h$a;->g:Lcn/mucang/jiakaoyi/uilib/unityres/a$b;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, v0}, Lcn/mucang/jiakaoyi/uilib/unityres/a$b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
