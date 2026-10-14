.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->b:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->c:I

    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->d:Z

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->e:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->b:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->c:I

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->d:Z

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/q;->e:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;->u(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;IIZLcn/mucang/android/jiakaoyi/teachingk2/elements/model/SerializableRect;)V

    return-void
.end method
