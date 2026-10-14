.class Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/examk2/common/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;Ljava/util/List;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/model/a;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/t/a0$a;Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;Ljava/util/List;IZ)V

    .line 2
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/g/f;->d(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V

    return-void
.end method
