// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// hello_world
void hello_world();
RcppExport SEXP _wdnet_hello_world() {
BEGIN_RCPP
    Rcpp::RNGScope rcpp_rngScope_gen;
    hello_world();
    return R_NilValue;
END_RCPP
}
// fx
double fx(arma::colvec x, arma::mat Y, arma::colvec z);
RcppExport SEXP _wdnet_fx(SEXP xSEXP, SEXP YSEXP, SEXP zSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::colvec >::type x(xSEXP);
    Rcpp::traits::input_parameter< arma::mat >::type Y(YSEXP);
    Rcpp::traits::input_parameter< arma::colvec >::type z(zSEXP);
    rcpp_result_gen = Rcpp::wrap(fx(x, Y, z));
    return rcpp_result_gen;
END_RCPP
}
// dprewire_directed_cpp
Rcpp::List dprewire_directed_cpp(int iteration, int nattempts, arma::uvec targetNode, arma::vec sourceOut, arma::vec sourceIn, arma::vec targetOut, arma::vec targetIn, arma::uvec index_s, arma::uvec index_t, arma::mat eta, bool rewire_history);
RcppExport SEXP _wdnet_dprewire_directed_cpp(SEXP iterationSEXP, SEXP nattemptsSEXP, SEXP targetNodeSEXP, SEXP sourceOutSEXP, SEXP sourceInSEXP, SEXP targetOutSEXP, SEXP targetInSEXP, SEXP index_sSEXP, SEXP index_tSEXP, SEXP etaSEXP, SEXP rewire_historySEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< int >::type iteration(iterationSEXP);
    Rcpp::traits::input_parameter< int >::type nattempts(nattemptsSEXP);
    Rcpp::traits::input_parameter< arma::uvec >::type targetNode(targetNodeSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type sourceOut(sourceOutSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type sourceIn(sourceInSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type targetOut(targetOutSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type targetIn(targetInSEXP);
    Rcpp::traits::input_parameter< arma::uvec >::type index_s(index_sSEXP);
    Rcpp::traits::input_parameter< arma::uvec >::type index_t(index_tSEXP);
    Rcpp::traits::input_parameter< arma::mat >::type eta(etaSEXP);
    Rcpp::traits::input_parameter< bool >::type rewire_history(rewire_historySEXP);
    rcpp_result_gen = Rcpp::wrap(dprewire_directed_cpp(iteration, nattempts, targetNode, sourceOut, sourceIn, targetOut, targetIn, index_s, index_t, eta, rewire_history));
    return rcpp_result_gen;
END_RCPP
}
// dprewire_undirected_cpp
Rcpp::List dprewire_undirected_cpp(int iteration, int nattempts, Rcpp::IntegerVector node1, Rcpp::IntegerVector node2, arma::vec degree1, arma::vec degree2, arma::vec index1, arma::vec index2, arma::mat e, bool rewire_history);
RcppExport SEXP _wdnet_dprewire_undirected_cpp(SEXP iterationSEXP, SEXP nattemptsSEXP, SEXP node1SEXP, SEXP node2SEXP, SEXP degree1SEXP, SEXP degree2SEXP, SEXP index1SEXP, SEXP index2SEXP, SEXP eSEXP, SEXP rewire_historySEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< int >::type iteration(iterationSEXP);
    Rcpp::traits::input_parameter< int >::type nattempts(nattemptsSEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type node1(node1SEXP);
    Rcpp::traits::input_parameter< Rcpp::IntegerVector >::type node2(node2SEXP);
    Rcpp::traits::input_parameter< arma::vec >::type degree1(degree1SEXP);
    Rcpp::traits::input_parameter< arma::vec >::type degree2(degree2SEXP);
    Rcpp::traits::input_parameter< arma::vec >::type index1(index1SEXP);
    Rcpp::traits::input_parameter< arma::vec >::type index2(index2SEXP);
    Rcpp::traits::input_parameter< arma::mat >::type e(eSEXP);
    Rcpp::traits::input_parameter< bool >::type rewire_history(rewire_historySEXP);
    rcpp_result_gen = Rcpp::wrap(dprewire_undirected_cpp(iteration, nattempts, node1, node2, degree1, degree2, index1, index2, e, rewire_history));
    return rcpp_result_gen;
END_RCPP
}
// rpanet_cpp
Rcpp::List rpanet_cpp(arma::vec snode, arma::vec tnode, arma::vec scenario, int nnode, int nedge, double delta_out, double delta_in, bool directed);
RcppExport SEXP _wdnet_rpanet_cpp(SEXP snodeSEXP, SEXP tnodeSEXP, SEXP scenarioSEXP, SEXP nnodeSEXP, SEXP nedgeSEXP, SEXP delta_outSEXP, SEXP delta_inSEXP, SEXP directedSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::vec >::type snode(snodeSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type tnode(tnodeSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type scenario(scenarioSEXP);
    Rcpp::traits::input_parameter< int >::type nnode(nnodeSEXP);
    Rcpp::traits::input_parameter< int >::type nedge(nedgeSEXP);
    Rcpp::traits::input_parameter< double >::type delta_out(delta_outSEXP);
    Rcpp::traits::input_parameter< double >::type delta_in(delta_inSEXP);
    Rcpp::traits::input_parameter< bool >::type directed(directedSEXP);
    rcpp_result_gen = Rcpp::wrap(rpanet_cpp(snode, tnode, scenario, nnode, nedge, delta_out, delta_in, directed));
    return rcpp_result_gen;
END_RCPP
}
// findNode_cpp
arma::vec findNode_cpp(arma::vec nodes, arma::vec edges);
RcppExport SEXP _wdnet_findNode_cpp(SEXP nodesSEXP, SEXP edgesSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::vec >::type nodes(nodesSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type edges(edgesSEXP);
    rcpp_result_gen = Rcpp::wrap(findNode_cpp(nodes, edges));
    return rcpp_result_gen;
END_RCPP
}
// findNode_undirected_cpp
Rcpp::List findNode_undirected_cpp(arma::vec node1, arma::vec node2, arma::vec start_edge, arma::vec end_edge);
RcppExport SEXP _wdnet_findNode_undirected_cpp(SEXP node1SEXP, SEXP node2SEXP, SEXP start_edgeSEXP, SEXP end_edgeSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::vec >::type node1(node1SEXP);
    Rcpp::traits::input_parameter< arma::vec >::type node2(node2SEXP);
    Rcpp::traits::input_parameter< arma::vec >::type start_edge(start_edgeSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type end_edge(end_edgeSEXP);
    rcpp_result_gen = Rcpp::wrap(findNode_undirected_cpp(node1, node2, start_edge, end_edge));
    return rcpp_result_gen;
END_RCPP
}
// nodeStrength_cpp
Rcpp::List nodeStrength_cpp(arma::vec snode, arma::vec tnode, arma::vec weight, int nnode, bool weighted);
RcppExport SEXP _wdnet_nodeStrength_cpp(SEXP snodeSEXP, SEXP tnodeSEXP, SEXP weightSEXP, SEXP nnodeSEXP, SEXP weightedSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::vec >::type snode(snodeSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type tnode(tnodeSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type weight(weightSEXP);
    Rcpp::traits::input_parameter< int >::type nnode(nnodeSEXP);
    Rcpp::traits::input_parameter< bool >::type weighted(weightedSEXP);
    rcpp_result_gen = Rcpp::wrap(nodeStrength_cpp(snode, tnode, weight, nnode, weighted));
    return rcpp_result_gen;
END_RCPP
}
// sampleNode_cpp
arma::vec sampleNode_cpp(arma::vec total_node);
RcppExport SEXP _wdnet_sampleNode_cpp(SEXP total_nodeSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::vec >::type total_node(total_nodeSEXP);
    rcpp_result_gen = Rcpp::wrap(sampleNode_cpp(total_node));
    return rcpp_result_gen;
END_RCPP
}
// fillWeight_cpp
arma::mat fillWeight_cpp(arma::mat adj, arma::mat edgelist, arma::vec edgeweight);
RcppExport SEXP _wdnet_fillWeight_cpp(SEXP adjSEXP, SEXP edgelistSEXP, SEXP edgeweightSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat >::type adj(adjSEXP);
    Rcpp::traits::input_parameter< arma::mat >::type edgelist(edgelistSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type edgeweight(edgeweightSEXP);
    rcpp_result_gen = Rcpp::wrap(fillWeight_cpp(adj, edgelist, edgeweight));
    return rcpp_result_gen;
END_RCPP
}