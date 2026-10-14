.class public final synthetic Lcn/mucang/jiakaoyi/uilib/diff/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Ljava/lang/String;IJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->a:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->b:Ljava/lang/String;

    iput p3, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->c:I

    iput-wide p4, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->d:J

    iput-boolean p6, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->e:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->a:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->b:Ljava/lang/String;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->c:I

    iget-wide v3, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->d:J

    iget-boolean v5, p0, Lcn/mucang/jiakaoyi/uilib/diff/e;->e:Z

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;->w(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffActivity;Ljava/lang/String;IJZLandroid/view/View;)V

    return-void
.end method
