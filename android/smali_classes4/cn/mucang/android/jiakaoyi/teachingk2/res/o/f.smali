.class public Lcn/mucang/android/jiakaoyi/teachingk2/res/o/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/res/o/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/f$a;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/f$a$a;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/f$a$a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/res/o/f$a;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/res/o/f$a$a;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->m(Lcn/mucang/android/jiakaoyi/mapcollect/c/h;)V

    return-void
.end method
