.class public Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->All:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    return-void
.end method

.method public static a()Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    return-object v0
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;)V
    .locals 2

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bbe\u7f6e\u5012\u5e93\u5355\u8fb9:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/dksingle/SingleType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method
