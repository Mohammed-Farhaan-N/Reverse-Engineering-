.class final Lj$/util/stream/ReduceOps$3;
.super Lj$/util/stream/Node$-CC;
.source "SourceFile"


# instance fields
.field final synthetic val$accumulator:Lj$/util/function/BiConsumer;

.field final synthetic val$collector:Lj$/util/stream/Collector;

.field final synthetic val$combiner:Lj$/util/function/BinaryOperator;

.field final synthetic val$supplier:Lj$/util/function/Supplier;


# direct methods
.method constructor <init>(ILj$/util/function/BinaryOperator;Lj$/util/function/BiConsumer;Lj$/util/function/Supplier;Lj$/util/stream/Collector;)V
    .locals 0

    iput-object p2, p0, Lj$/util/stream/ReduceOps$3;->val$combiner:Lj$/util/function/BinaryOperator;

    iput-object p3, p0, Lj$/util/stream/ReduceOps$3;->val$accumulator:Lj$/util/function/BiConsumer;

    iput-object p4, p0, Lj$/util/stream/ReduceOps$3;->val$supplier:Lj$/util/function/Supplier;

    iput-object p5, p0, Lj$/util/stream/ReduceOps$3;->val$collector:Lj$/util/stream/Collector;

    invoke-direct {p0, p1}, Lj$/util/stream/Node$-CC;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getOpFlags()I
    .locals 2

    iget-object v0, p0, Lj$/util/stream/ReduceOps$3;->val$collector:Lj$/util/stream/Collector;

    invoke-interface {v0}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_ORDERED:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final makeSink()Lj$/util/stream/ReduceOps$AccumulatingSink;
    .locals 4

    .line 0
    new-instance v0, Lj$/util/stream/ReduceOps$3ReducingSink;

    iget-object v1, p0, Lj$/util/stream/ReduceOps$3;->val$supplier:Lj$/util/function/Supplier;

    iget-object v2, p0, Lj$/util/stream/ReduceOps$3;->val$accumulator:Lj$/util/function/BiConsumer;

    iget-object v3, p0, Lj$/util/stream/ReduceOps$3;->val$combiner:Lj$/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/ReduceOps$3ReducingSink;-><init>(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BinaryOperator;)V

    return-object v0
.end method
