.class final Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/utils/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->p(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;

.field final synthetic b:F

.field final synthetic c:F


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$a;->b:F

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$a;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$a;->b:F

    const v2, 0x3f19999a    # 0.6f

    mul-float p1, p1, v2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$a;->c:F

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager;->a(Lcn/mucang/android/jiakaoyi/teachingk2/res/ResourceManager$b;F)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
